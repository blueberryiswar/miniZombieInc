return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.7.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 42,
  height = 42,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 2,
  nextobjectid = 1,
  properties = {},
  tilesets = {
    {
      name = "big_map",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "../asset/big_map.png",
      imagewidth = 128,
      imageheight = 256,
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
      tilecount = 32,
      tiles = {
        {
          id = 0,
          type = "Road",
          properties = {
            ["direction"] = "horizontal"
          }
        },
        {
          id = 1,
          type = "Road"
        },
        {
          id = 2,
          type = "Road",
          properties = {
            ["direction"] = "tdown"
          }
        },
        {
          id = 3,
          type = "Road",
          properties = {
            ["direction"] = "crossroad"
          }
        },
        {
          id = 4,
          type = "Road",
          properties = {
            ["direction"] = "horizontal"
          }
        },
        {
          id = 5,
          type = "Road",
          properties = {
            ["direction"] = "vertical"
          }
        },
        {
          id = 6,
          type = "Road",
          properties = {
            ["direction"] = "all"
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 42,
      height = 42,
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
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        5, 5, 5, 3, 5, 5, 5, 3, 5, 5, 5, 3, 3, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        5, 5, 5, 4, 5, 5, 5, 4, 5, 5, 5, 2, 6, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 4, 5, 5, 5, 3, 5, 5, 5, 5, 5, 5, 5, 3, 5, 5, 5, 5, 5, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        5, 5, 5, 4, 5, 5, 5, 4, 5, 5, 5, 2, 6, 2, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 1, 4, 5, 5, 5, 5, 5, 5, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 6, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 6, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 2, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 6, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 2, 6, 2, 13, 13, 13, 6, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 6, 2, 13, 13, 13, 6, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 2, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13
      }
    }
  }
}
