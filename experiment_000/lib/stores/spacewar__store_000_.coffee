{EventEmitter, dispatcher, flux, _, c, React, React_DOM, Imm, Bluebird, rr, shortid, assign, keys, math, mm, svg_bp} = require('../__boiler__plate__.coffee')()



some_function_000 = (a) ->
    {some_stuff} = a

some_function_001 = (a) ->
    {some_stuff} = a

kestrel_position = (a) ->
    {time, stack_000, prevPositionVelocity} = a
    # some physics primitives.  gravity from the planet.  
    # do we want to use tensors ?  i think yes.  
    # but we'll have developed an ordered stack of actions like thrust rotation
    # those maybe timestamped ?  so we'll be calculating here a series of mutations over a short 
    # span of metrized time.


kestrel_3_square_matrix = [


]

kestrel_tensor_000 = {}

kestrel_rotation_delta = (a) ->
    {some_stuff} = a

kestrel_velocity_delta = kestrel_thrust = (a) -> # adds a timestamped thrust to kestrel delta_stack.  ordered stack.
# ordered stack list or something.
#
# 
    {quantity, vector, just_vector, thrust_stack} = a
    now = Date.now()
    c quantity

    # this may get called once for every keypress so quantity always just unit.


    thrust_stack.push now



on_thrust_keypress = ->
    kestrel_thrust()


vector = [100, 100]

normalise_everything = 'there is supposed to be some benefit to this practice.'

kestrel_thrust( 8, )


kestrel_state =
    vagaries: " wat ?  what ?? whaaat ? "
    zero_time_of_report: Date.now()
    position: 'pos'
    velocity: 'velocity' # how much vector matrix tensor ?
    mass: 'just kidding ?  not if modeling relativity.'
    # some stack of deltas

f_0 = (a) ->
    {time_delta, action} = a

f_1 = (a) ->  # this function calculates position as a function of 
# end_time, start_time, start_position_and_velocity  (a matrix ?),
# maybe want to use tensors.
    {action_stack, start_time, end_time, start_position_vector} = a

    x =
        time: 'time' # delta_time derive
        normalised_thrust_vector: [0, 1, 1]
        thrust_magnitude: 'assumed to be 1'

    # action stack = [x, x_i, x_ii]

f_2 = (a) ->
    {x_el}
    # maybe it just takes a start time and computes the delta
    # this function takes a time interval, a starting position_velocity
    # and that's it.  it returns what the ending position_velocity is
    # it's really simple if there is no gravity.  
    # well there's an acceleration due to gravity that can be added at
    # any point
    # 
    # 
    starting_matrix = [
        [rotation_x_element, 0, displacement_x_direction]
        []

    ]

    velocity_vector = [20, 40]
    position = [0, 0]
    time_delta = 10
    



chronos = (a) ->
    {some_stuff} = a
    heartbeat = setInterval (a_0) ->
        c 'doing stuff', a_0
        # updating state over an array of updates
        # so we have all these other functions of time and effects, if the effects are 
        # passed as parameters, which they would be if it were 'pure' function, if 
        # i have that orthodxely
    , 7







spacewar_store = assign {}, EventEmitter.prototype,

    initialise: ->
        c 'should get initial state now'


    # kestrel and dragoon are the two main elements.  ships whatever.






spacewar_store.dispatchToken = dispatcher.register (action) ->
    c 'spacewar got an action', action


module.exports = spacewar_store