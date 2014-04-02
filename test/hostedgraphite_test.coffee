chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'hostedgraphite', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/hostedgraphite')(@robot)

  it 'registers a "graphite list" hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(/graphite list/)
