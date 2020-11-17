window.addEventListener('load', function(){
  const headerFishCatch = document.getElementById("header-fish-catch")
  const pullDownFishCatch = document.getElementById("fish-catch-pulldown")
  // const headerRecipe = document.getElementById("header-recipe")
  // const pullDownRecipe = document.getElementByIdId("recipe-pulldown")
  // const headeColium = document.getElementById("herder-colium")
  // const pullDownColium = document.getElementById("")
  const headerUserName = document.getElementById("header-user-name")
  const headerUserpullDown = document.getElementById("user-pulldown")
  // const headerUserList.getElementById("user-name-list")

  // headerFishCatch = addEventListener('mouseover', function(){
  //   console.log("hahaha")
  //   pullDownFishCatch.setAttribute("style", "display:block;")
  // })
  // headerFishCatch = addEventListener('mouseout', function(){
  //   pullDownFishCatch.removeAttribute("style", "display:block;")
  // })

  // headerRecipe = addEventListener('mouseover', function(){
  //   console.log("hahaha")
  // })

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