return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.7.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 20,
  height = 12,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 4,
  nextobjectid = 3,
  properties = {},
  tilesets = {
    {
      name = "street",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "../asset/street.png",
      imagewidth = 128,
      imageheight = 128,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      wangsets = {},
      tilecount = 16,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 20,
      height = 12,
      id = 1,
      name = "ground",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
        6, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 6, 6,
        6, 1, 6, 6, 7, 6, 6, 6, 6, 6, 6, 11, 6, 6, 6, 6, 6, 1, 6, 6,
        6, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 11, 6, 6, 6, 6, 6, 1, 6, 7,
        6, 1, 6, 9, 11, 6, 6, 6, 6, 6, 6, 11, 6, 3, 6, 3, 6, 1, 6, 6,
        6, 1, 6, 6, 6, 6, 2, 1, 1, 1, 6, 11, 6, 6, 6, 6, 6, 1, 7, 6,
        6, 1, 6, 6, 6, 6, 6, 6, 2, 1, 6, 11, 6, 6, 6, 6, 8, 1, 6, 6,
        6, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 11, 6, 7, 6, 6, 6, 1, 6, 6,
        6, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 9, 6, 6, 1, 6, 6,
        6, 4, 6, 5, 6, 3, 6, 10, 6, 11, 6, 6, 9, 6, 6, 6, 10, 4, 6, 8,
        6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "Player",
          type = "player",
          shape = "point",
          x = 47.3848,
          y = 88.2247,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "solid",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 2,
          name = "",
          type = "collider",
          shape = "rectangle",
          x = 178.544,
          y = 61.2599,
          width = 100.529,
          height = 80.1091,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        }
      }
    }
  }
}
