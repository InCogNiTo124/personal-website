<script lang="ts">
  import Section from '$slib/components/Sections/Section.svelte';
  import { BLANK } from '$slib/utils';

  export let url: TSection['url'];
  export let title: TSection['title'];
  export let data: TSection['data'];
</script>

<Section {url} {title} urlTarget={BLANK}>
  <div slot="body">
    {#each data as paragraph}
      <p>
        {@html paragraph}
      </p>
    {/each}
  </div>
</Section>
