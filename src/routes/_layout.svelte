<script>
  import Nav from "../components/Nav.svelte";
  import Header from "../components/Header.svelte";

  export let segment;
</script>

<div id="app">
  <Nav {segment} />
  <div id="content">
    <Header />
    <div id="main">
      <slot />
    </div>
  </div>
</div>

<style>
  #content {
    display: flex;
    flex-direction: column;
    width: 100%;
  }

  #app {
    text-align: center;
    display: flex;
    flex-direction: column;
    justify-content: start;
    font-size: larger;
    height: 100vh;
  }

  #main {
    text-align: justify;
    padding: 30px 10px;
  }

  @media screen and (min-width: 650px) {
    #app {
      flex-direction: row;
      justify-content: center;
    }
    #content {
      display: flex;
      flex-direction: column;
      width: 750px;
      padding-top: 50px;
    }
  }
</style>
