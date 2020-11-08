<template>
  <img
    :src="
      `https://assets.coingecko.com/coins/images/11849/large/yearn-finance.png`
    "
    class="d-inline-block bg-gray-9 v-align-middle line-height-0 circle"
    :style="{
      width: `${size || 22}px`,
      height: `${size || 22}px`
    }"
  />
</template>

<script>
export default {
  props: ['address', 'size']
};
</script>
