<template>
  <span v-if="counter > 0" v-text="counter" class="Counter" />
</template>

<script>
export default {
  props: {
    counter: Number
  }
};
</script>

<style scoped lang="scss">
@import '../../vars';

.Counter {
  display: inline-block;
  font-weight: 500;
  line-height: 18px;
  height: 20px;
  width: 20px;
  color: $text;
  text-align: center;
  background-color: $yfi-blue;
  border-radius: 10px;
  vertical-align: middle;
}
</style>
