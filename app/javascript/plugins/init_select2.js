const initSelect2 = () => {
  $('.select2').select2({
    tags: true,
    width: '100%',
    placeholder: "Type it in and hit ENTER, or select from the list...",
  });

}

export { initSelect2 };
