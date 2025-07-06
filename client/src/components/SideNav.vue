<template>
    <div class="kost-side-nav">
        <div class="kost-side-nav__title">
            <img :src="logoUrl" alt="Kost Labs Logo" />
            <h2>Kost Labs</h2>
        </div>
        <div class="kost-side-nav__links">
            
            <router-link to="/" class="kost-side-nav__link">
                <Home />
                Home
            </router-link>
            <router-link to="/projects" class="kost-side-nav__link">
                <FolderGit />
                Projects
            </router-link>
            <router-link to="/blog" class="kost-side-nav__link">
                <NotebookText />
                Blog
            </router-link>
            <router-link to="/photos" class="kost-side-nav__link">
                <Camera />
                Photography
            </router-link>
            <router-link to="/about" class="kost-side-nav__link">
                <Info />
                About Me
            </router-link>
        </div>
    </div>
</template>

<script setup lang="ts">
import logoUrl from "@/assets/images/logo.png"; 
import { Info, NotebookText, Home, FolderGit, Camera } from 'lucide-vue-next'; 
</script>

<style lang="scss">
@use '../assets/stylesheets/index.scss' as *;
.kost-side-nav {
  width: 10%;
  height: 100%;
  background-color: $background-secondary;
  //padding: space(2);
  border: 1px solid transparent;

  &:hover {
    border-right-color: $gray-200;
  }

  &__title {
    display: flex;
    align-items: center;
    gap: space(4);   

    img {
      width: 45px;
      height: 45px;
    }

    h2 {
      font-size: 20px;
      font-weight: 600;;
      margin: 0;
    }
  }
  &__links {
    margin-top: space(6);
    display: flex;
    flex-direction: column;
    gap: space(1);
  }
  &__link {
    display: flex;
    align-items: center;    
    gap: space(2);           
    text-decoration: none;  
    color: inherit;        
    padding: space(2) space(4);
    transition: background 0.2s;
    font-size: 20px;
    &:hover {
        background-color: $gray-50;
    }
  }
}

</style>