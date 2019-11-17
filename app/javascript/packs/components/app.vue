<template>
  <div id="app">
    <table>
      <tbody>
        <tr>
          <th>question_num</th>
          <th>content</th>
        </tr>
        <tr v-for="q in questions" :key="q.id">
          <td>{{ q.question_num }}</td>
          <td>{{ q.content }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
  import axios from 'axios';

  export default {
    data: function () {
      return {
        questions: []
      }
    },
    mounted() {
      axios
      .get('/api/v1/questions.json')
      .then(response => (this.questions = response.data))
    }
  }
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
