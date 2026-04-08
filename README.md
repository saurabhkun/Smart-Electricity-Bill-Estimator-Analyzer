<div align="center">
  <img src="https://img.shields.io/badge/MATLAB-R2007b%2B-blue?style=for-the-badge&logo=mathworks&logoColor=white" alt="MATLAB"/>
  <img src="https://img.shields.io/badge/Status-Completed-success?style=for-the-badge" alt="Status"/>
  <img src="https://img.shields.io/badge/Type-Mini%20Project-orange?style=for-the-badge" alt="Type"/>
  
  <br>

  <h1>⚡ Smart Electricity Bill Estimator & Analyzer</h1>
  <p><i>A smart, interactive, and visually rich MATLAB utility to calculate, analyze, and visualize your electricity consumption.</i></p>
  
  <p>
    <a href="#-about-the-project">About</a> •
    <a href="#-key-features">Features</a> •
    <a href="#-billing-logic">Billing Logic</a> •
    <a href="#-visualizations">Visualizations</a> •
    <a href="#-how-to-run">How to Run</a>
  </p>
</div>

---

## 💡 About The Project

Tired of complex electricity bills? The **Smart Electricity Bill Estimator** is a lightweight but powerful MATLAB script designed to demystify your energy consumption. It not only calculates your exact bill down to the last decimal based on custom-defined slabs but also acts as an energy-saving companion by warning you when you cross predefined "safe" usage limits. 

Whether you are a **Domestic** household or a **Commercial** enterprise, this tool breaks down the numbers and presents them through beautiful visual graphs.

---

## ✨ Key Features

- **💡 Dynamic Slab Calculation**: Distinct billing structures for Domestic and Commercial connections.
- **📊 6-Month Trend Analysis**: Input your past half-year history to see how your usage changes over time.
- **🚨 Smart Warning System**: Automatically alerts you if your current month's usage exceeds the recommended safe limit.
- **📈 Advanced Visualizations**: Automatically generates three distinct plots to help you visualize costs and usage patterns.
- **🧾 Instant Receipt Generation**: Prints a beautifully formatted, ready-to-read console receipt including fixed charges and tax.

---

## 🧮 Billing Logic & Slabs

The system applies an intelligent slab-based logic to accurately estimate energy costs:

### 🏠 Domestic Connection (Safe Limit: 500 Units)
| Unit Range | Rate per Unit (Rs) |
| :--- | :--- |
| **0 - 100** | 3.50 |
| **101 - 300** | 5.00 |
| **301 - 500** | 6.50 |
| **Above 500** | 8.00 |

### 🏢 Commercial Connection (Safe Limit: 400 Units)
| Unit Range | Rate per Unit (Rs) |
| :--- | :--- |
| **0 - 200** | 6.00 |
| **201 - 500** | 8.00 |
| **Above 500** | 10.00 |

> **Note:** A standard fixed charge of **Rs 50** and a **9% Tax** is applied automatically to the final energy charge.

---

## 🎨 Visualizations

The script doesn't just crunch numbers; it brings them to life using MATLAB's robust plotting capabilities. Three figures are generated upon successful execution:

1. 📉 **Cost Curve (Units vs. Cost)**: A line graph mapping the entire slab system, placing a dynamic red marker precisely at your current usage so you can see where you stand on the curve.
2. 📊 **Monthly History (Bar Chart)**: Compares your last 6 months of data against the safe usage threshold (indicated by a dashed red limit line).
3. 🍕 **Bill Breakdown (Pie Chart)**: A clean pie chart splitting your final bill into *Energy Charges*, *Fixed Charges*, and *Taxes*.

---

## 🚀 How to Run

1. Make sure you have **MATLAB** installed (Compatible with R2007b and above).
2. Clone this repository or download the `mini_project.m` file.
3. Open MATLAB and navigate to the folder containing `mini_project.m`.
4. Run the script by typing the following in the Command Window:
   ```matlab
   mini_project
   ```
5. Follow the interactive console prompts:
   - Enter your name.
   - Choose connection type (`D` or `C`).
   - Enter current units consumed.
   - Enter units consumed over the last 6 months.
6. **Watch the magic happen!** The console will print your detailed receipt and the figures will pop up.

---

<div align="center">
  <i>Made to stand out. Let's make energy analysis smart and sexy. 🚀</i>
</div>
