<template>
    <div id="app" :class="{ 'disableZoom': disableZoom }">
        <transition name="fade">
            <router-view/>
        </transition>
    </div>
</template>

<script>
    import { settings } from '@/settings';

    export default {
        mounted() {
            this.$router.push('/intro/initial');
        },
        data() {
            return {
                disableZoom: settings.disableZoom
            }
        }
    }
</script>

<style lang="scss">
    @import '_theme';

    html.lightdm {
        background: $outer-background !important;
        color: $secondary-color;
    }

    /* HiDPI */
    @media screen and (min-width: 3000px) and (min-height: 1200px) {
        #app:not(.disableZoom) {
            zoom: 2.0;
        }
    }

    html, body, #app, #app > *, .base > * {
        margin: 0;
        padding: 0;

        height: 100vh;

        overflow-y:hidden;
    }

    h1, h2, h3, h4, h5, h6 {
        cursor: default;
    }

    img {
        -webkit-user-drag: none;
    }

    #app {
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        -webkit-user-select: none;

        text-align: center;
    }

    .fade-enter-active, .fade-leave-active {
        transition-property: opacity;
        transition-duration: .4s;
    }

    .fade-enter-active {
        transition-delay: .4s;
    }

    .fade-enter, .fade-leave-active {
        opacity: 0
    }
</style>
