🗳️⚡ Electronic Voting Machine (EVM) – Code Description

This Verilog code implements a 4-candidate Electronic Voting Machine (EVM) using an FPGA. 🏫💻

🔘 Voting: When vote_enable is active, pressing a candidate button increases that candidate's vote count. 👤1️⃣ 👤2️⃣ 👤3️⃣ 👤4️⃣

📊 Vote Counting: The votes of all four candidates are stored in separate 8-bit counters. 🔢

🏆 Winner Detection: The candidate with the highest number of votes is determined, and the corresponding LED is switched ON. 💡🏆

🖥️ Seven-Segment Display: The vote counts are displayed using the seven-segment display. 🔢📟

⏱️ Clock Divider: The clock divider generates a slower refresh clock for proper multiplexing of the seven-segment display. ⏰

🔄 Overall Working: The system allows users to cast votes, stores the votes, displays the vote counts, and indicates the winning candidate using LEDs. 🗳️✅🏆
