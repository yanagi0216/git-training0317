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

//入力フォーム
const inputNmae = document.getElementById("name");
const inputEmail = document.getElementById("email");
const formResult = document.getElementById("formResult");

function validateForm () {
if(inputNmae.value.trim() === ""){
  formResult.textContent = "名前を入力してください";
} else if (inputEmail.value.trim() === ""){
  formResult.textContent = "メールアドレスを入力してください";
} else {
  formResult.textContent = "送信しました";
}
}


const projects = [

{name:"マンション建設",status:"進行中"},
{name:"ビル改修",status:"設計中"},
{name:"店舗施工",status:"完了"}

]

const projectlist = document.getElementById("projectList");

function showProjects () {
  projectlist.textContent = ""
  
  projects.forEach(project => {
    const li = document.createElement("li");
    console.log(project.name + ":" + project.status);
    li.textContent = project.name + ":" + project.status ;

    projectlist.appendChild(li);
});
}

const works = [

{task:"基礎工事",day:3},
{task:"配管工事",day:2},
{task:"内装工事",day:5}

]

const workTable = document.getElementById("workTable");

function createTable () {
  workTable.innerHTML = "" ;

  works.forEach(work => {
    const row = document.createElement("tr");

    const task = document.createElement("td");
    task.textContent = work.task;
    row.appendChild(task);

    const day = document.createElement("td");
    day.textContent = work.day;
    row.appendChild(day);

    workTable.appendChild(row);
  });
}


const costs = [120000,80000,50000]

const costResult = document.getElementById("costResult");

function calcCost() {
  totalCost = 0 ;

  costs.forEach(cost => {
    totalCost += cost ;
    console.log(totalCost);
  });
  costResult.textContent = totalCost ;
};