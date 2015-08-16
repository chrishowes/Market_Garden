




attribute vec2 position; //the position of the point
attribute vec3 color;
varying vec3 vColor;

void main(void) { //pre-built function\n\
    gl_Position = vec4(position, -2.0, 2.0);
    vColor = color;
}
