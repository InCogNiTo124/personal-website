<script context="module" lang="ts">
  /** @type {import('@sveltejs/kit').ErrorLoad} */
  export function load({ error, status }) {
    return {
      props: {
        title: `${status}: ${error.message}`,
      },
    };
  }
</script>

<script lang="ts">
  export let title: string;
</script>

<h1>{title}</h1>
