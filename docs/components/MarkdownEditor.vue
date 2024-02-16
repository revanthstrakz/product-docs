<template>
  <div class="markdown-editor">
    <textarea v-model="input" placeholder="Enter markdown text"></textarea>
    <div v-html="renderedMarkdown" class="markdown-output"></div>
  </div>
</template>

<script>
import MarkdownIt from 'markdown-it'

export default {
  data() {
    return {
      // Specify your default input text here
      input: 'Welcome to **Markdown Editor**!\n\nType some *Markdown* here, and see it rendered on the fly.',
    }
  },
  computed: {
    renderedMarkdown() {
      const md = new MarkdownIt();
      return md.render(this.input);
    }
  }
}
</script>

<style scoped>
.markdown-editor {
  display: flex;
  flex-direction: column; /* Stack children vertically */
  gap: 20px;
}
textarea {
  width: 100%;
  height: 200px; /* Adjust height as needed */
}
.markdown-output {
  border: 1px solid #ccc;
  padding: 10px;
  width: 100%;
  overflow-y: auto;
  height: auto; /* Adjust based on content or set a fixed height */
}
</style>
