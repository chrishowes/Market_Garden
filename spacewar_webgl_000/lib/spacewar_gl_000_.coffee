


document.getElementsByTagName('body')[0].style.overflow = 'hidden'

{dispatcher, flux, _, c, Imm, Bluebird, shortid, assign, keys, math, mm} = require('./__boiler__plate__.coffee')()



main = ->

    canvas = document.getElementById 'canvas'
    canvas.width = window.innerWidth
    canvas.height = window.innerHeight


    GL = canvas.getContext "experimental-webgl", {antialias: false}



    shader_vertex = require('./shaders/shader_vertex_source.glsl')
    shader_fragment = require('./shaders/shader_fragment_source.glsl')

    get_shader = (source, type, typeString) ->
        shader = GL.createShader type
        GL.shaderSource shader, source
        GL.compileShader shader
        if not GL.getShaderParameter(shader, GL.COMPILE_STATUS)
            c "error in " + typeString + " SHADER : " + GL.getShaderInfoLog(shader)
            return false
        return shader

    shader_vertex = get_shader(shader_vertex, GL.VERTEX_SHADER, "VERTEX")
    shader_fragment = get_shader(shader_fragment, GL.FRAGMENT_SHADER, "FRAGMENT")


    SHADER_PROGRAM = GL.createProgram()
    GL.attachShader SHADER_PROGRAM, shader_vertex
    GL.attachShader SHADER_PROGRAM, shader_fragment

    GL.linkProgram SHADER_PROGRAM

    _color = GL.getAttribLocation SHADER_PROGRAM, "color"
    _position = GL.getAttribLocation SHADER_PROGRAM, "position"
    GL.enableVertexAttribArray _position
    GL.useProgram SHADER_PROGRAM

    triangle_vertex = [
        .5,  .5,  0.0,
         -.5,  .5,  0.0,
         .5, -.5,  0.0,
         -.5, -.5,  0.0
     ]

    TRIANGLE_VERTEX = GL.createBuffer()
    GL.bindBuffer GL.ARRAY_BUFFER, TRIANGLE_VERTEX
    GL.bufferData GL.ARRAY_BUFFER, new Float32Array(triangle_vertex), GL.STATIC_DRAW

    triangle_faces = [0, 1, 2]
    TRIANGLE_FACES = GL.createBuffer()
    GL.bindBuffer GL.ELEMENT_ARRAY_BUFFER, TRIANGLE_FACES
    GL.bufferData GL.ELEMENT_ARRAY_BUFFER, new Uint16Array(triangle_faces), GL.STATIC_DRAW

    GL.clearColor 0.0, 0.0, 0.0, 0.0
    animate = ->
        c 'into animate'
        GL.viewport 0.0, 0.0, canvas.width, canvas.height
        GL.clear GL.COLOR_BUFFER_BIT
        GL.bindBuffer GL.ARRAY_BUFFER, TRIANGLE_VERTEX
        GL.vertexAttribPointer _position, 2, GL.FLOAT, false, 4 * (2 + 3), 0
        GL.vertexAttribPointer _color, 3, GL.FLOAT, false, 4 * (2 + 3), (2 * 4)
        GL.bindBuffer GL.ELEMENT_ARRAY_BUFFER, TRIANGLE_FACES
        GL.drawElements GL.TRIANGLES, 3, GL.UNSIGNED_SHORT, 0
        GL.flush()
        window.requestAnimationFrame(animate)

    animate()

main()

# Worker = require("worker!./alpha_worker.coffee")
# alpha_worker = new Worker()

# WWorker = require("worker!./alpha_worker.coffee")
# alpha_worker = new WWorker()







