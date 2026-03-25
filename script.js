//2曲まで選べる
// const songCheckboxes = document.querySelectorAll('.song');

// songCheckboxes.forEach(cb => {
// cb.addEventListener("change", () => {

// // チェックボックスの要素を取得する
// const el = document.getElementsByClassName("song");

// let count = 0;
// // チェクボックスの数分ループ
// for (let i = 0; i < el.length; i++) {
//     // チェックされている数をカウント
//     if (el[i].checked) {
//         count++;
//     }
//   }

// console.log(count);

// const songResult = document.getElementById("songResult");

// if(count <= 2){
//   songResult.textContent="2曲までOKです"
// } else if (count > 2){
//   songResult.textContent = "※2曲まで選択してください"
// };
// });
// });

//３個目からチェックボックスを押せないようにする
const checkboxes = document.querySelectorAll(".song");
const limit = 2 ;
const songResult = document.getElementById("songResult");
songResult.textContent = "2曲まで選択できます";

checkboxes.forEach(cb => {
  cb.addEventListener("change",() => {
    const checkedCount = document.querySelectorAll(".song:checked").length;

    if(checkedCount >= limit){
      checkboxes.forEach(item => {
        if(!item.checked){
          item.disabled = true ;
        }
        songResult.textContent = "２曲以上は選択できません";
        songResult.style.color = "red";
      });
    } else {
      checkboxes.forEach(item => {
        item.disabled = false;
      });
      songResult.style.color = "black";
    }
  });
});
