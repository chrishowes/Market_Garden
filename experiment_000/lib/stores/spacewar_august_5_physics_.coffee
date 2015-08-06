


c = -> console.log.apply console, arguments

React = require 'react'
Imm = require 'immutable'

c React.version
# c Imm

math = require './math.min.js'
# c math

start_time = Date.now()
last = Date.now()
c 'start time ', start_time



pos_vec_000 = [11, 1, 0]

velocity_vec_000 = [14, 28, 0]

change_position = (a) ->
    {old_pos, vel_vec, delta_t} = a
    nu_x = old_pos[0] + vel_vec[0] * delta_t
    nu_y = old_pos[1] + vel_vec[1]* delta_t

    return [nu_x, nu_y, 0]

change_velocity = (a) ->
    c 'changing vel'
    {old_vel, vel_vec} = a
    nu_x = old_vel[0] + vel_vec[0]
    nu_y = old_vel[1] + vel_vec[1]
    [nu_x, nu_y, 0]


gravity_acceleration = (a) ->
    {pos_vec, delta_t} = a

    # computes acceleration force due to gravity at an instant
    # and applies it to velocity vector
    # so we have a massive body at 0,0 origin




    # first we need proper delta distance scalar

    distance = math.sqrt((pos_vec[0] ** 2) + (pos_vec[1] ** 2))

    # we need to arbitrarily set the masses of the two bodies, kestrel and planet

    planet_mass_scalar = 34.8
    kestrel_mass_scalar = .0009


    # then arbitrarily set grav constant for our universe

    grav_constant = 500
    # then it will be calced force, but need to convert this to a vector

    accel_at_instance = (grav_constant * planet_mass_scalar * kestrel_mass_scalar) / distance
    # this will be sin and cosine , no it will be normalised position vector
    # multiplied by the force.  maybe negative of that.  
    c 'accel_at_instance', accel_at_instance
    # then we have the gravity accel

    # delta_pos / t is velocity
    # delta_velocity / t is acceleration

    # so in this case we'll also want a delta_t . we'll multiply the gravity accel by the delta_t to get the vector we need
    masha_vec = accel_at_instance * delta_t * 1000
    c 'masha_vec', masha_vec
    # then add this vector to the current velocity vector to get the instantaneous velocity calced here.
    

chronos_000 = setInterval =>
    now = Date.now()
    delta_t = now - last
    epoch = now - start_time
    last = now
    c 'pos_vec_000', pos_vec_000
    c 'vel_vec_000', velocity_vec_000

    gravity_acceleration
        pos_vec: pos_vec_000
        delta_t: delta_t
    pos_vec_000 = change_position
        old_pos: pos_vec_000
        vel_vec: velocity_vec_000
        delta_t: delta_t
    if epoch % 13 > 3
        #if delta % 7 > 2
        velocity_vec_000 = change_velocity
            old_vel: velocity_vec_000
            vel_vec: [epoch % 23, epoch % 19]






    if epoch > 1200
        c 'cut'
        clearInterval chronos_000

, 100




