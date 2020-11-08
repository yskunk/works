<template>
  <button
    :type="type || 'button'"
    @click="$emit('click')"
    class="button"
    :disabled="loading"
  >
    <UiLoading v-if="loading" />
    <slot v-else />
  </button>
</template>

<script>
export default {
  props: {
    loading: Boolean,
    type: String
  }
};
</script>

<style scoped lang="scss">
@import '../../vars';

.button {
  border: 1px solid $border-color;
  background-color: transparent;
  color: $text;
  border-radius: 23px;
  padding: 0 24px;
  outline: none;
  line-height: 46px;
  height: 46px;
  font-size: 18px;

  &.button--submit {
    background-color: $yfi-blue;
    border: 1px solid $yfi-blue;

    &:hover {
      color: $white;
      background-color: $yfi-blue;
      border: 1px solid $yfi-blue;
    }

    &:disabled {
      color: $white !important;
      border: 1px solid $text-gray;
      background-color: $text-gray;
    }
  }

  &:hover {
    color: $text;
    border-color: $text;
  }

  &:disabled {
    color: $text-gray !important;
    cursor: not-allowed;
  }
}
</style>
