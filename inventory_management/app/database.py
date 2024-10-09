from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os

SQLALCHEMY_DATABASE_URL = "postgresql://sit722part5_yypa_user:KJC3PbCNEX7HrKMJUXMcaa0DMxP8755A@dpg-cs2ip2e8ii6s739jaqn0-a.oregon-postgres.render.com/sit722part5_yypa"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()
