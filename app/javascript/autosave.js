document.addEventListener("DOMContentLoaded", function () {
  const form = document.querySelector("form"); // assuming one form in the page
  let timer;

  form.addEventListener("input", () => {
    clearTimeout(timer);
    timer = setTimeout(() => {
      autosaveForm();
    }, 2000); // Save 2 seconds after the last change
  });

  function autosaveForm() {
    const formData = new FormData(form);

    fetch(form.action.replace("edit", "autosave"), {
  method: "PATCH",
  body: formData,
  headers: {
    "X-CSRF-Token": document.querySelector("[name='csrf-token']").content,
  },
})

      .then((response) => response.json())
      .then((data) => {
        const statusDiv = document.getElementById("autosave-status"); // Get the status div
        if (data.errors) {
          console.log("Draft save failed:", data.errors);
          statusDiv.textContent = "Draft save failed"; // Update status message on failure
        } else {
          console.log(data.message);
          statusDiv.textContent = "Draft saved successfully"; // Update status message on success
        }
      })
      .catch((error) => {
        console.error("Error saving draft:", error);
        const statusDiv = document.getElementById("autosave-status"); // Get the status div
        statusDiv.textContent = "Error saving draft"; // Update status message on error
      });
  }
});
