


document.getElementsByTagName('body')[0].style.overflow = 'hidden'
imp_root = document.getElementById('__react__root__')

require('./__monkey__patch__.coffee')

{Gladder ,dispatcher, flux, _, c, React, React_DOM, Imm, Bluebird, rr, shortid, assign, keys, math, mm, svg_bp} = require('./__boiler__plate__.coffee')()
{div, canvas} = React.DOM

c 'React version', React.version
c 'dispatcher', dispatcher




gl_tablet = rr

    gl: null

    componentDidMount: ->

        c 'Gladder', Gladder

        imp_003 = React_DOM.findDOMNode @refs.canvas_000

        gla = new Gladder({canvas: imp_003})
        c 'gla', gla

        initWebGL = (canvas) ->
            gl = canvas.getContext("webgl") or canvas.getContext("experimental-webgl")
            return gl

        c 'did mount'

        imp_000 = React_DOM.findDOMNode @refs.canvas_000
        @gl = initWebGL imp_000

        c '@gl', @gl

        @gl.clearColor 0.0, 0.0, 0.0, 1.0
        @gl.enable gl.DEPTH_TEST
        @gl.depthFunc gl.LEQUAL
        @gl.clear gl.COLOR_BUFFER_BIT|gl.DEPTH_BUFFER_BIT


        initShaders = ->
            fragmentShader = getShader @gl, "shader-fs"
            vertexShader = getShader @gl, "shader-vs"

            shaderProgram = @gl.createProgram()
            @gl.attachShader shaderProgram, vertexShader
            @gl.attachShader shaderProgram, fragmentShader
            @gl.linkProgram shaderProgram

            @gl.useProgram shaderProgram

            vertexPositionAttribute = @gl.getAttribLocation shaderProgram, "aVertexPosition"
            @gl.enableVertexAttribArray vertexPositionAttribute


        shader_000 = ->


    render: ->


        rayy_000 = new Float32Array [
            -1.0, -1.0,
            1.0, -1.0,
            -1.0, 1.0,
            -1.0, 1.0,
            1.0, -1.0,
            1.0, 1.0
        ]

        c 'rayy_000', rayy_000

        # gl = initWebGL canva

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
        div main_div(),
            canvas
                ref: 'canvas_000'
                width: 640
                height: 480



React_DOM.render gl_tablet(), imp_root