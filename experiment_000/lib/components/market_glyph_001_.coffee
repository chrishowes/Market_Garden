
{dispatcher, flux, _, c, React, React_DOM, Imm, Bluebird, rr, shortid, assign, keys, math, mm, svg_bp} = require('../__boiler__plate__.coffee')()

{div, svg, circle, rect, line, input, defs, clipPath, linearGradient, stop, g, path, d, polygon, image, pattern, filter, feBlend, feOffset, polyline, feGaussianBlur, feMergeNode, feMerge, radialGradient, foreignObject, text, ellipse} = React.DOM

dragoon_store = require('../stores/dragoon_store_000_.coffee')
kestrel_store = require('../stores/kestrel_store_000_.coffee')

glyph = rr

    _on_change_000: ->
        c 'market glyph listener got emmision from kestrel'
        @setState
            text: "pow wow"

    componentDidMount: ->
        kestrel_store.add_changeListener @_on_change_000

    getInitialState: ->
        text: "initial hello"

    shouldComponentUpdate: (nextProps, nextState) ->
        {imm_M} = @props
        next_imm_M = nextProps.imm_M
        if (Imm.is(imm_M, next_imm_M)) and (@state.text is nextState.text)
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
        # pointless
        # canvas = document.getElementById("canvas")
        # gl = canvas.getContext("experimental-webgl")

        # vertexShader = createShaderFromScriptElement gl, "2d-vertex-shader"
        # fragmentShader = createShaderFromScriptELement gl, "2d-fragment-shader"
        # program = createProgram gl, [vertexShader, fragmentShader]
        # gl.useProgram program

        # positionLocation = gl.getAttribLocation program, "a_position"

        # buffer = gl.createBuffer()
        # gl.bindBuffer gl.ARRAY_BUFFER, buffer
        # gl.bufferData gl.ARRAY_BUFFER,
        # new Float32Array [
        #     -1.0, -1.0,
        #     1.0, -1.0
        #     -1.0, 1.0,
        #     -1.0, 1.0
        #     1.0, -1.0
        #     1.0, 1.0
        # ], gl.STATIC_DRAW
        # gl.enableVertexAttribArray positionLocation
        # gl.vertexAttribPointer positionLocation, 2, gl.FLOAT, false, 0, 0

        # gl.drawArrays gl.TRIANGLES, 0, 6





module.exports = -> glyph