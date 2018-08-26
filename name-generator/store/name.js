export const state = () => ({
  newName: null
})

export const mutations = {
  set (state, newName) {
    state.newName = newName
  }
}

export const getters = {
  isExist (state) {
    return !!state.newName
  }
}
