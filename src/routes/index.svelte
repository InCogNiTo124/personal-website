<script>
  import SectionGroup from "../components/SectionGroup.svelte";
  import { FER_LINK_EN, TARGET_BLANK, INLINE_CLASS } from "../components/utils";

  const age = Math.round((new Date() - 860803200000) / 1000 / 60 / 60 / 24 / 365);

  let sections = [
    {
      title: "Who I am",
      url: "",
      data: [
        `Marijan Smetko, ${age}, student of <a class=${INLINE_CLASS} href=${FER_LINK_EN} ${TARGET_BLANK}>FER, University of Zagreb</a>, Croatia.`,
      ],
    },
    {
      title: "My interests",
      url: "",
      data: [
        "My primary interests are machine (and deep) learning and computer vision. Other interests include: physics, math (especially statistics), chemistry, chaos theory, and quantum computing.",
        "I'm also deeply married to the idea of computers as tools for automating redundant tasks, so I write a lot of Python and bash scripts.",
      ],
    },
  ];
</script>

<svelte:head>
  <title>About</title>
</svelte:head>
<div class="about">
  <SectionGroup {sections} />
</div>
