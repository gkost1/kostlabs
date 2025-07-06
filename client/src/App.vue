<script setup lang="ts">
import SideNav from './components/SideNav.vue';
</script>

<template>
  <SideNav />
  <router-view />
</template>

<style lang="scss">
@use './assets/stylesheets/index.scss' as *;

#app {
  display: flex;
  flex-direction: row;
  height: 100vh;
  width: 100vw;
  background-color: $background-color;
  color: $primary;
  font-family: 'Epilogue', sans-serif;
}

</style>
