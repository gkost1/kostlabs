import { createRouter, createWebHistory } from 'vue-router';
import Home from './Home.vue';
import About from './About.vue';
import Blog from './Blog.vue';
import Projects from './Projects.vue';
import Photography from './Photography.vue';

const routes = [
    { path: '/', name: 'Home', component: Home },
    {path: '/about', name: 'About', component: About },
    {path: '/blog', name: 'Blog', component: Blog },
    {path: '/projects', name: 'Projects', component: Projects },
    {path: '/photos', name: 'Photography', component: Photography },
]

const router = createRouter({
    history: createWebHistory(),
    routes,
})

export default router;