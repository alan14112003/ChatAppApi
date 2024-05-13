const { uploadSingleFileCloud } = require('@/app/utils/helper')

const uploadSingleFile = async (req, res, next) => {
  try {
    const file = req.file
    const { path } = await req.body

    if (!file) {
      return res.status(400).json({
        message: 'please upload a file',
      })
    }

    if (!path) {
      return res.status(422).json({
        message: 'path is required',
      })
    }

    const fileResponse = await uploadSingleFileCloud(file.path, path)
    return res.status(200).json(fileResponse)
  } catch (error) {
    console.log(error)
    next(error)
  }
}

export default {
  uploadSingleFile,
}
