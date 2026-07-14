import sqlite3
import sys
from pathlib import Path

DATABASE = "database/student.db"

def run_sql(file_path):
    sql_file = Path(file_path)

    if not sql_file.exists():
        print(f"❌ File not found: {sql_file}")
        return

    with sqlite3.connect(DATABASE) as conn:
        conn.executescript(sql_file.read_text(encoding="utf-8"))

    print(f"✅ Successfully executed: {sql_file.name}")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage:")
        print("python runner.py <path_to_sql_file>")
    else:
        run_sql(sys.argv[1])