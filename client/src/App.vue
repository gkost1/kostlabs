<script setup lang="ts">
import Home from './pages/Home.vue';
</script>

<template>
  <Home />
</template>

<style lang="scss">
@use './assets/stylesheets/index.scss' as *;

body {
    background-color: $background-color;
    color: $primary;
    font-family: 'Arial', sans-serif;
  }
</style>
