
initialState = null # temp hoist

{EventEmitter, dispatcher, flux, _, c, React, React_DOM, Imm, Bluebird, rr, shortid, assign, keys, math, mm, svg_bp} = require('../__boiler__plate__.coffee')()

# map = -> _.map.apply _, arguments

cursive_zero_reveal_001 =(idx, stack, state) ->
    ac = arguments.callee
    i = idx[0] ; j = idx[1] ; cors = state["#{i}#{j}"] ; salinity = cors[3]
    stack["#{i}#{j}"] = [on, off, off, salinity]
    if salinity is 0
        stack_keys = keys stack
        if j < state.z_board_width
            if stack_keys.indexOf("#{i}#{j + 1}") is -1
                ac [i, j + 1], stack, state
        if j > 0
            if stack_keys.indexOf("#{i}#{j - 1}") is -1
                ac [i, j - 1], stack, state
        if i > 0
            if stack_keys.indexOf("#{i - 1}#{j}") is -1
                ac [i - 1, j], stack, state
            if j > 0
                if stack_keys.indexOf("#{i - 1}#{j - 1}") is -1
                    ac [i - 1, j - 1], stack, state
            if j < state.z_board_width
                if stack_keys.indexOf("#{i - 1}#{j + 1}") is -1
                    ac [i - 1, j + 1], stack, state
        if i < state.z_board_height
            if stack_keys.indexOf("#{i + 1}#{j}") is -1
                ac [i + 1, j], stack, state
            if j > 0
                if stack_keys.indexOf("#{i + 1}#{ j - 1}") is -1
                    ac [i + 1, j - 1], stack, state
            if j < state.z_board_width
                if stack_keys.indexOf("#{i + 1}#{j + 1}") is -1
                    ac [i + 1, j + 1], stack, state
    stack["#{i}#{j}"] = [on, off, cors[2], cors[3]]

lay_mine_field = (z_board_height, z_board_width, initialState)->
    for i in [0 .. z_board_height]
        do (i) ->
            for j in [0 .. z_board_width]
                do (j) ->
                    if math.random() < mined_probability
                        initialState["#{i}#{j}"] = [off, off, on, null]
                        # < revealed, flagged, mined, salinity >
                    else
                        initialState["#{i}#{j}"] = [off, off, off, null]



lay_mine_field_001 = (state_001, state_002, state_003) ->
    state_004 = [0 .. z_board_height].reduce (acc, i) ->
        c 'i is this number', i
        return acc
    , [state_000, state_001, state_002]


salt_water_000 = (a) ->
    {z_board_height, z_board_width, tile_state_000} = a  #water_state or tile_state or board_state
    for i in [0 .. z_board_height] #something equals this as map function
        # do (i) -=>
        for j in [0 .. z_board_width]
            # do (j) -=>
            if tile_state_000["#{i}#{j}"][2] is off
                counter = 0 ; up = -> counter += 1
                if i > 0
                    if tile_state_000["#{i - 1}#{j}"][2] is on then up()
                    if j > 0
                        if tile_state_000["#{i - 1}#{j - 1}"][2] is on then up()
                    if j < z_board_width
                        if tile_state_000["#{i - 1}#{j + 1}"][2] is on then up()
                if i < z_board_height
                    if tile_state_000["#{i + 1}#{j}"][2] is on then up()
                    if j > 0
                        if tile_state_000["#{i + 1}#{j - 1}"][2] is on then up()
                    if j < z_board_width
                        if tile_state_000["#{i + 1}#{j + 1}"][2] is on then up()
                if j > 0
                    if tile_state["#{i}#{j - 1}"][2] is on then up()
                if j < z_board_width
                    if tile_state["#{i}#{j + 1}"][2] is on then up()

unit_test_000 = ->
    z_board_width = 8; z_board_height = 8;
    tile_state = 


reveal = (a) ->
    {state_000} = a
    if not (state_000.end_board_halo or state_000.game_won)
        i = idx[0] ; j = idx[1] ; cors = state_000["#{i}#{j}"]
        if cors[0] is on
            # c 'already revealed'
            #@neighbor_walk_000 idx # this could hook as a test ; check values for consistency
        else
            if cors[2] is on
                @setState
                    "#{i}#{j}": [on, off, on, null]
                @end_game_lost_blown_up idx
            else
                if cors[3] is 0
                    stack = {} ; @cursive_zero_reveal_001 idx, stack, @state ; 
                    stack_length = keys(stack).length
                    @setState stack
                    #@is_game_over_000 'reveal', idx, stack_length

                else # revealing some salted water
                    @setState
                        "#{i}#{j}": [on, off, off, cors[3]]
                    #@is_game_over_000 'reveal', idx, 1

# how functional and how much state (?)
# chain it 
# frags
#







salt_water = (z_board_height, z_board_width) ->
    for i in [0 .. z_board_height]
        #do (i) ->
        for j in [0 .. z_board_width]
            #do (j) ->
            if initialState["#{i}#{j}"][2] is off
                counter = 0 ; up = -> counter += 1
                if i > 0
                    if initialState["#{i - 1}#{j}"][2] is on then up()
                    if j > 0
                        if initialState["#{i - 1}#{j - 1}"][2] is on then up()
                    if j < z_board_width
                        if initialState["#{i - 1}#{j + 1}"][2] is on then up()
                if i < z_board_height
                    if initialState["#{i + 1}#{j}"][2] is on then up()
                    if j > 0
                        if initialState["#{i + 1}#{j - 1}"][2] is on then up()
                    if j < z_board_width
                        if initialState["#{i + 1}#{j + 1}"][2] is on then up()
                if j > 0
                    if initialState["#{i}#{j - 1}"][2] is on then up()
                if j < z_board_width
                    if initialState["#{i}#{j + 1}"][2] is on then up()
                initialState["#{i}#{j}"][3] = counter

#_______________________________________________________________________________
#     oldd stuff  :::::::::::: 
#                         lay_mine_field() ; salt_water() ; return initialState
#_______________________________________________________________________________




#__________________________________________________________________________
#_____________________________________________________________________
#__________________________________________________________________________
# new stuff :                                                         
#
minesweeper_store = assign {}, EventEmitter.prototype,

    initialise: ->
        c 'should get initial state now'






minesweeper_store.dispatchToken = dispatcher.register (action) ->
    c 'minesweeper got an action', action


module.exports = minesweeper_store