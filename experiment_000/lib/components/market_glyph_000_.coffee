
{dispatcher, flux, _, c, React, React_DOM, Imm, Bluebird, rr, shortid, assign, keys, math, mm, svg_bp} = require('../__boiler__plate__.coffee')()

{svg, circle, rect, line, input, defs, clipPath, linearGradient, stop, g, path, d, polygon, image, pattern, filter, feBlend, feOffset, polyline, feGaussianBlur, feMergeNode, feMerge, radialGradient, foreignObject, text, ellipse} = React.DOM

dragoon_store = require('../stores/dragoon_store_000_.coffee')

glyph = rr

    shouldComponentUpdate: (nextProps, nextState) ->
        {imm_M} = @props
        next_imm_M = nextProps.imm_M
        if (Imm.is(imm_M, next_imm_M))
            return false
        else
            return true

    handle_click_000: ->
        c 'handling 000'
        dispatcher.dispatch
            myType: 'hello type 0'
            type: 'hello type 1'
            some_other_property: 'another property'
    handle_click_001: ->
        c 'handling 001'

    render: ->
        M = @props.imm_M.toJS()

        t__c = do ->
            nc =
                cx: -40
                cy: 14
                r: 20
            origin: mm(M, [nc.cx, nc.cy, 1])
            radius: nc.r * M[0][0]

        circ_002 = do ->
            nc =
                cx: 10
                cy: -40
                r: 20
            origin : mm(M, [nc.cx, nc.cy, 1])
            radius: nc.r * M[0][0]



        # now we are at the actual render definition, actually defining rendered 
        # svg elements.
        svg svg_bp,
            circle
                cx: t__c.origin[0]
                cy: t__c.origin[1]
                r: t__c.radius
                fill: 'pink'
                stroke: 'white'
                onClick: @handle_click_000
            circle
                cx: circ_002.origin[0]
                cy: circ_002.origin[1]
                r: circ_002.radius
                fill: 'blue'
                stroke: 'purple'
                onClick: @handle_click_001




module.exports = -> glyph