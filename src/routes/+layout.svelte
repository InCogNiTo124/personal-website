<script lang="ts">
  import { onMount } from 'svelte';
  import { browser } from '$app/environment';
  import Cookies from 'js-cookie';
  import { LIGHT, COOKIE_KEY_THEME } from '$slib/utils';
  import { theme } from '$slib/stores/theme_store';
  import Nav from '$lib/components/Nav.svelte';
  import Header from '$lib/components/Header.svelte';

  onMount(() => {
    if (browser) {
      theme.useCookie();
      theme.subscribe((newval) => {
        document.getElementById('body').setAttribute('class', newval);
      });
      document
        .getElementById('body')
        .setAttribute('class', Cookies.get(COOKIE_KEY_THEME) || LIGHT);
    }
  });
</script>

<div id="app">
  <Nav />
  <div id="content">
    <div id="main">
      <Header />
      <slot />
    </div>
  </div>
</div>
