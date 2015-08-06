

{EventEmitter, dispatcher, flux, _, c, React, React_DOM, Imm, Bluebird, rr, shortid, assign, keys, math, mm, svg_bp} = require('../__boiler__plate__.coffee')()

kestrel_store = require('./kestrel_store_000_.coffee')

dragoon_store = assign {}, EventEmitter.prototype,

    emit_changeEvent: ->
        c 'dragoon change event'
        @emit "CHANGE"
    
    test_000: ->
        c "we're in dragoon_store in the test_000 function."

    test_001: ->

dragoon_store.dispatchToken = dispatcher.register (action) ->
    c 'dragoon got an action', action
    dispatcher.waitFor [kestrel_store.dispatchToken]
    dragoon_store.emit_changeEvent()



module.exports = dragoon_store