import EventEmitter from 'events'

const eventEmitter = new EventEmitter()
const EVENT_NAME = 'message.to.rooms'

const EmitSocketEvent = {
  emit: (rooms, event, ...args) => {
    return eventEmitter.emit(EVENT_NAME, rooms, event, ...args)
  },

  /**
   *
   * @param {(room, event, ...args) => {}} cb
   */
  on: (cb) => {
    eventEmitter.on(EVENT_NAME, cb)
  },
}

export default EmitSocketEvent
