<template>
  <div>
    <p>Der Button wurde <strong>{{ count }}</strong> mal gedrückt.</p>
    <button @click="increment">Klick mich</button>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'

const count = ref<number>(0)
function increment() {
  count.value++
}
</script>

<style scoped>
button { padding: 0.5rem 1rem; font-size: 1rem }
</style>
