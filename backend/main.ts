// @ts-types="npm:@types/express"
import express from "npm:express"; 
const app = express() 

app.get("/", ( request , response )=>{
    response.send({name:"Bob Ross Of Course"})
})

app.listen(3005)
console.log("Listening on port 3005");

