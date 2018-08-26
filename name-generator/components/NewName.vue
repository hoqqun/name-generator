<template>
  <transition>
    <v-container v-if="$store.getters['name/isExist']">
      <v-layout align-center justify-center row fill-height>
        <h1 class="kanji">{{ $store.state.name.newName.japanese }}</h1>
      </v-layout>
      <v-layout align-center justify-center row fill-height>
        <h2 class="roman_letter">{{ $store.state.name.newName.roman_letter }}</h2>
      </v-layout>
    </v-container>
  </transition>
</template>

<script>
</script>


<style>
.kanji {
  font-size: 12rem;
}
.roman_letter {
  font-size: 6rem;
}
.v-enter-active, .v-leave-active {
  transition: opacity 3s;
}
.v-enter, .v-leave-to {
  opacity: 0;
}
</style>
