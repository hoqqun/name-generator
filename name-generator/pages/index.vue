<template>
  <v-content>
    <v-container>
      <Form></Form>
      <NewName></NewName>
    </v-container>
  </v-content>
</template>

<script>
import NewName from '~/components/NewName.vue'
import Form from '~/components/Form.vue'

export default {
  components: {
    NewName,
    Form
  }
}
</script>

<style>
</style>
