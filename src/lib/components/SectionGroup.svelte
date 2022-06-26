<script lang="ts">
  import SectionGroup from '$slib/components/Sections/SectionGroup.svelte';
  import Section from '$lib/components/Section.svelte';

  export let sections: Array<TSection> = [];
</script>

<SectionGroup
  sections={sections.map((section, idx) => ({ ...section, id: idx }))}
  noSections={false}
  page={null}
  {Section}
/>
