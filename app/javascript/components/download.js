// const sendBtn = document.querySelector('#btn-send');
// const form = document.querySelector('#form-download');

// event - submit / click
// const downloadBtn = form.addEventListener('submit', function() {
//   const downBtn = document.querySelector('#btn-download');
//   downBtn.classList.remove('hidden');
// });

// export { downloadBtn };

const downloadBtn = () => {
  const sendBtn = document.querySelector('#btn-send');
  //const form = document.querySelector('#form-download');
  sendBtn.addEventListener('click', function() {
    const downBtn = document.querySelector('#btn-download');
    downBtn.classList.remove('hidden');
  });
};

export { downloadBtn };
