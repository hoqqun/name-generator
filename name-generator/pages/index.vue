<template>
  <v-container>
    <v-layout row wrap>
      <v-flex xs12 m6>
        <v-form v-model="valid">
          <v-text-field v-model="name" :rules="nameRules" :counter="10" label="Name" required></v-text-field>
          <v-radio-group v-model="gender" row>
            <v-radio label="Male" value="male"></v-radio>
            <v-radio label="Female" value="female"></v-radio>
          </v-radio-group>
          <v-dialog
            ref="dialog"
            v-model="modal"
            :return-value.sync="date"
            persistent
            lazy
            full-width
            width="290px"
            hide-overlay
          >
            <v-text-field
              slot="activator"
              v-model="date"
              label="Picker in dialog"
              prepend-icon="event"
              readonly
            ></v-text-field>
            <v-date-picker v-model="date" scrollable>
              <v-spacer></v-spacer>
              <v-btn flat color="primary" @click="modal = false">Cancel</v-btn>
              <v-btn flat color="primary" @click="$refs.dialog.save(date)">OK</v-btn>
            </v-date-picker>
          </v-dialog>
          <v-btn @click="generate">Generate You Japanese Name</v-btn>
        </v-form>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
import AppLogo from '~/components/AppLogo.vue'
import axios from 'axios'
export default {
  data () {
    return {
      name: null,
      gender: "male",
      date: null,
      modal: false,
      newName: null
    }
  },
  components: {
    AppLogo
  },
  methods: {
    generate: function(event) {
      /*axios.post('https://samurai-name.herokuapp.com/names/fetch',{name:this.name,male:}).then(function(response){
        this.newName = response.data
      }).catch(function(error){
        console.log("取得でできず")
      })*/
      alert("これから実装")
    }
  }
}
</script>

<style>

</style>

