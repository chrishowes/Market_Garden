# things we want available everywhere ; may polymorph to different stuff as develop it




c = -> console.log.apply console, arguments
Immutable = require('immutable')
_ = require('lodash')
Bluebird = require('bluebird')
math = require('./math.min.js')
flux = require('flux')
require './gladder.coffee'


Dispatcher = flux.Dispatcher
dispatcher = new Dispatcher()
EventEmitter = require('events').EventEmitter


module.exports = ->
    Gladder: Gladder
    EventEmitter: EventEmitter
    dispatcher: dispatcher
    flux: flux
    _: _
    c : -> console.log.apply console, arguments
    Imm: Immutable
    Bluebird: Bluebird
    rr : -> React.createFactory(React.createClass.apply(React, arguments))
    shortid : require 'shortid'
    assign: -> _.assign.apply(_, arguments)
    keys: -> _.keys.apply(_, arguments)
    math: math
    mm: -> math.multiply.apply math, arguments



