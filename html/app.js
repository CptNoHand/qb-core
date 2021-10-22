const { useQuasar } = Quasar;
const { onMounted, onUnmounted } = Vue;
const app = Vue.createApp({
  setup() {
    const $q = useQuasar();
    const showNotif = (e) => {
      const text = e.data.text;
      const length = e.data.length;
      const type = e.data.type;
      const caption = e.data.caption;

      switch (type) {
        case 'success':
          color = 'green';
          icon = 'done';
          break;
        case 'primary':
          color = 'blue';
          icon = 'info';
          break;
        case 'error':
          color = 'red';
          icon = 'dangerous';
          break;
        case 'police':
          color = 'blue';
          icon = 'local_police';
          break;
        case 'ambulance':
          color = 'red';
          icon = 'fas fa-ambulance';
          break;
      }

    const showNotif = async ({ data }) => {
      // Otherwise we process any old MessageEvent with a data property
      if (data?.action !== "notify") return;

      const { text, length, type, caption } = data;
      const { classes, icon } = determineStyleFromVariant(type);

      // Make sure we have sucessfully fetched out config properly
      if (!NOTIFY_CONFIG) {
        console.error(
          "The notification config did not load properly, trying again for next time"
        );
        // Lets check again to see if it exists
        await fetchNotifyConfig();
        // If we have a config lets re-run notification with same data, this
        // isn't recursive though.
        if (NOTIFY_CONFIG) return showNotif({ data });
      }

      $q.notify({
        message: text,
        caption: caption,
        multiLine: multiline,
        color: color,
        group: false,
        progress: true,
        position: 'right',
        timeout: length,
        caption,
        classes,
        icon,
      });
    };
    onMounted(() => {
      window.addEventListener('message', showNotif);
    });
    onUnmounted(() => {
      window.removeEventListener('message', showNotif);
    });
    return {};
  },
});
app.use(Quasar, { config: {} });
app.mount('#q-app');
