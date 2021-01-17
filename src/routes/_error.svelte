<script>
  export let status;
  export let error;

  const dev = process.env.NODE_ENV === "development";
</script>

<svelte:head>
  <title>{status}</title>
</svelte:head>

<div>
	<h2>It seems something is wrong...</h2>
  <h1><pre>{status}</pre></h1>

  <h3><pre>{error.message}</pre></h3>

  {#if dev && error.stack}
    <pre>{error.stack}</pre>
  {/if}
</div>

<style>
  div {
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  h1 {
    font-size: 4rem;
    font-weight: 700;
    margin: 0 0 1rem 0;
  }

  h2 {
	  margin: 0 0 3rem 0;
	  text-align: center;
  }

  h3 {
    width: max-content;
    font-weight: 500;
    font-size: 2rem;
  }

  @media screen and (min-width: 650px) {
    div {
      align-items: flex-start;
    }
  }
</style>
