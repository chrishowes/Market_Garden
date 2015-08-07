# things we want available everywhere ; may polymorph to different stuff as develop it




c = -> console.log.apply console, arguments
React = require("react")
React_DOM = require("react-dom")
Immutable = require('immutable')
core = require('core-js/library')
_ = require('lodash')
Bluebird = require('bluebird')
math = require('./math.min.js')
flux = require('flux')
require './gladder.coffee'


#require('./three.min.js')

c 'glMatrix', glMatrix

c "Three", THREE

#ReactTHREE = require 'react-three'
#c "ReactTHREE", ReactTHREE

Dispatcher = flux.Dispatcher
dispatcher = new Dispatcher()
EventEmitter = require('events').EventEmitter

c 'EventEmitter', EventEmitter


module.exports = ->
    Gladder: Gladder
    EventEmitter: EventEmitter
    dispatcher: dispatcher
    flux: flux
    _: _
    c : -> console.log.apply console, arguments
    React: React
    React_DOM: React_DOM
    Imm: Immutable
    Bluebird: Bluebird
    rr : -> React.createFactory(React.createClass.apply(React, arguments))
    shortid : require 'shortid'
    assign: -> _.assign.apply(_, arguments)
    keys: -> _.keys.apply(_, arguments)
    math: math
    mm: -> math.multiply.apply math, arguments
    svg_bp :
        width: '100%'
        height: '100%'


