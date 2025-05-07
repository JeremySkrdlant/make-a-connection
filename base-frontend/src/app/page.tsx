"use client"
import styles from "./page.module.css";
import { useState, useEffect } from "react";

export default function Home() {
  const [name, setName] = useState("")

  async function getName(){
    setName("Update This");
  }

  return (
    <div className={styles.page}>
        <h1>{name}</h1>
        <button onClick={getName}>Get Data</button>

    </div>
  );
}
