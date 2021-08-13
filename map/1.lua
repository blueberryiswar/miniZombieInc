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
  nextlayerid = 5,
  nextobjectid = 19,
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
      imageheight = 224,
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
      tilecount = 28,
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
        6, 14, 16, 16, 16, 16, 16, 16, 16, 16, 16, 20, 16, 16, 16, 16, 16, 15, 6, 6,
        6, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 6, 6, 6, 6, 6, 1, 6, 6,
        6, 1, 6, 6, 7, 6, 6, 6, 6, 6, 6, 1, 6, 6, 6, 6, 6, 1, 6, 6,
        6, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 6, 6, 6, 6, 6, 1, 6, 19,
        6, 2, 16, 16, 16, 16, 20, 16, 16, 16, 16, 3, 16, 16, 20, 16, 16, 3, 16, 22,
        6, 1, 6, 6, 6, 6, 1, 6, 6, 6, 6, 1, 6, 6, 1, 6, 6, 1, 7, 1,
        6, 1, 6, 6, 6, 6, 1, 6, 6, 6, 6, 2, 16, 16, 3, 16, 16, 4, 6, 1,
        6, 1, 6, 6, 6, 6, 18, 6, 6, 6, 6, 1, 6, 7, 1, 6, 6, 14, 16, 4,
        6, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 6, 6, 1, 6, 6, 1, 6, 6,
        6, 13, 16, 16, 16, 16, 16, 16, 20, 20, 16, 21, 16, 16, 21, 16, 16, 4, 6, 8,
        6, 6, 6, 6, 6, 6, 6, 6, 10, 9, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 20,
      height = 12,
      id = 4,
      name = "decoration",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 24, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0
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
        },
        {
          id = 10,
          name = "pickup",
          type = "pickup",
          shape = "point",
          x = 402.176,
          y = 48.5115,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "House",
          type = "house",
          shape = "point",
          x = 240.21,
          y = 215.955,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "police",
          type = "police",
          shape = "point",
          x = 526.585,
          y = 240.21,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "House",
          type = "house",
          shape = "point",
          x = 271.508,
          y = 212.042,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "House",
          type = "house",
          shape = "point",
          x = 335.668,
          y = 215.955,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "House",
          type = "house",
          shape = "point",
          x = 302.806,
          y = 213.607,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "powerup",
          type = "powerup",
          shape = "point",
          x = 333.321,
          y = 334.104,
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
          x = 389.026,
          y = 290.068,
          width = 21.7289,
          height = 28.5356,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 3,
          name = "",
          type = "collider",
          shape = "rectangle",
          x = 388.11,
          y = 194.121,
          width = 21.7289,
          height = 28.5356,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 4,
          name = "",
          type = "collider",
          shape = "rectangle",
          x = 516.913,
          y = 129.719,
          width = 21.7289,
          height = 28.5356,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 5,
          name = "",
          type = "collider",
          shape = "rectangle",
          x = 580.005,
          y = 129.457,
          width = 21.7289,
          height = 28.5356,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 6,
          name = "",
          type = "collider",
          shape = "rectangle",
          x = 613.253,
          y = 65.5795,
          width = 21.7289,
          height = 28.5356,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 7,
          name = "",
          type = "collider",
          shape = "rectangle",
          x = 292.293,
          y = 65.3177,
          width = 21.7289,
          height = 28.5356,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 8,
          name = "",
          type = "collider",
          shape = "rectangle",
          x = 69.2446,
          y = 224.75,
          width = 21.7289,
          height = 28.5356,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 9,
          name = "",
          type = "collider",
          shape = "rectangle",
          x = 581.314,
          y = 353.553,
          width = 21.7289,
          height = 28.5356,
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
