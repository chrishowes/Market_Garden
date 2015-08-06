
document.getElementsByTagName('body')[0].style.overflow = 'hidden'
imp_root = document.getElementById('__react__root__')
require('./__monkey__patch__.coffee')
{ dispatcher, flux, _, c, React, React_DOM, Imm, Bluebird, rr, shortid, assign, keys, math, mm, svg_bp} = require('./__boiler__plate__.coffee')()
{div} = React.DOM
c 'React version', React.version
c 'dispatcher', dispatcher

glyph_000 = require('./components/market_glyph_000_.coffee')()
board_000 = require('./components/board_000_.coffee')()

dragoon_store = require('./stores/dragoon_store_000_.coffee')
kestrel_store = require('./stores/kestrel_store_000_.coffee')

market_garden = rr

    componentWillUnmount: ->
        window.onresize = null
    set_boundingRect: ->
        @forceUpdate()
        bounding_rect = React_DOM.findDOMNode(@).getBoundingClientRect()
        @setState
            view_width: bounding_rect.width
            view_height: bounding_rect.height

    debounce: (func, wait, immediate) ->
        timeout = 'scoped here'
        ->
            context = @
            args = arguments
            later = ->
                timeout = null
                if not(immediate) then func.apply(context, args)
            callNow = immediate and not(timeout)
            clearTimeout timeout
            timeout = setTimeout(later, wait)
            if callNow then func.apply(context, args)

    debounced_set_boundingRect: -> @debounce(@set_boundingRect, 100)()

    componentDidMount: ->
        @set_boundingRect()
        window.onresize = @debounced_set_boundingRect # might perform the execution here instead of on the debounced_set_boundingRect definition, better style ?

    render: ->

        from_root_payload_002 = =>
            smaller = if @state.view_width < @state.view_height then @state.view_width else @state.view_height
            z = smaller / 200
            M = [[z, 0, (@state.view_width / 2)],[0, -z, (@state.view_height / 2)],[0, 0, 1]] # homogeneous coordinates transform matrix
            imm_M: Imm.fromJS M
            from_root: on
        main_div = ->
            style:
                background: 'black'
                position: 'absolute'
                width: window.innerWidth
                height: window.innerHeight
                left: 0
                right: 0
                top: 0
                bottom: 0

        if not @state?.view_width
            div main_div()
        else
            div main_div(),
                glyph_000 from_root_payload_002()

React_DOM.render market_garden(), imp_root

