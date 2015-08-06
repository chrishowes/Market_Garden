

{EventEmitter, dispatcher, flux, _, c, React, React_DOM, Imm, Bluebird, rr, shortid, assign, keys, math, mm, svg_bp} = require('../__boiler__plate__.coffee')()


# dragoon_store = require('./dragoon_store_000_.coffee')

kestrel_store = assign {}, EventEmitter.prototype,

    emit_changeEvent: ->
        c 'kestrel change event'
        @emit "CHANGE"

    add_changeListener: (cb) ->
        c 'adding change listener', cb
        @on "CHANGE", cb
    
    test_000: ->
        c "we're in dragoon_store in the test_000 function."

    test_001: ->

kestrel_store.dispatchToken = dispatcher.register (action) ->
    c 'kestrel got an action', action
    # dispatcher.waitFor [dragoon_store.dispatchToken]
    kestrel_store.emit_changeEvent()



module.exports = kestrel_store