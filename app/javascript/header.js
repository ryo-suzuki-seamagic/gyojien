window.addEventListener('load', function(){
  // const headerFishCatch = document.getElementById("header-fish-catch")
  // const pullDownFishCatch = document.getElementById("")
  // const headerRecipe = document.getElementById("header-recipe")
  // const pullDownRecipe = document.getElementByIdId("")
  // const headeColium = document.getElementById("herder-colium")
  // const pullDownColium = document.getElementById("")
  const headerUserName = document.getElementById("header-user-name")
  const headerUserpullDown = document.getElementById("user-pulldown")
  // const headerUserList.getElementById("user-name-list")

  // ユーザー名プルダウン
  headerUserName.addEventListener('mouseover', function(){
    headerUserpullDown.setAttribute("style", "display:block;")
  })
  headerUserName.addEventListener('mouseout', function(){
    headerUserpullDown.removeAttribute("style", "display:block;")
  })
  headerUserpullDown.addEventListener('mouseout', function(){
    headerUserpullDown.removeAttribute("style", "display:block;")
  })

})