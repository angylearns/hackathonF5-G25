import React from "react";
import "./Footer.css";
import "bootstrap/dist/css/bootstrap.min.css";
import { InputGroup, Row, Col, Button } from "react-bootstrap";
import Container from "react-bootstrap/Container";


function Footer() {
  return (
    <>
      <footer>
        <Container>
          <Row className="justify-content-center">
            <Col responsive className="m-4 text-center ">
              <img
                src="src\assets\logo-sinfondo-blanco.png"
                alt=""
                width="80px"
              />
              <div className="my-4">
                <i className="bi bi-facebook"></i>
                <i className="bi bi-twitter"></i>
                <i className="bi bi-instagram"></i>
                <i className="bi bi-twitch"></i>
              </div>
              <hr className="p-0 m-0" />
              <div className="mt-4">
                <span>
                  Esta página web está hecho por FemCoders Consultory.
                </span>
              </div>
            </Col>
          </Row>
        </Container>
      </footer>
    </>
  );
}

export default Footer;
