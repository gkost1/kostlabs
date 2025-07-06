import { createApp } from 'vue'
import './assets/stylesheets/index.scss'
import App from './App.vue'
import router from './pages/_router.ts'


const app = createApp(App)
app.use(router)
app.mount('#app')