import React from "react";
import "./Header.css";
import { Link } from "react-router-dom";
import { Form, InputGroup, Row, Col, Button } from "react-bootstrap";
import Container from "react-bootstrap/Container";
import "bootstrap/dist/css/bootstrap.min.css";


function Header(props) {
  const { isLogged, logout } = props;

  const isUserLogged = () => {
    return isLogged;
  };

  return (
    <>
      <Container className=" w-100">
        <nav className="navbar navbar-expand-sm d-flex justify-content-between responsive">
          <Link className="navbar-brand" to="/">
            <img
              src="src\assets\logo-sinfondo.png"
              alt="logo-techrevive"
            />


            <span>Tech Revive</span>
          </Link>

          <Form inline>
            <Row>
              <Col xs="auto">
                <InputGroup>
                  <Form.Control
                    type="text"
                    placeholder="Search"
                    className=" mr-sm-2"
                  />
                  <Button variant="outline-primary" id="button-addon1">
                    <i className="bi bi-search"></i>
                  </Button>
                </InputGroup>
              </Col>
            </Row>
          </Form>

          <ul className="navbar-nav flex-row justify-content-end flex-wrap">
            {!isUserLogged() ? (
              <li className="nav-item">
                <Link to="/sign-in">
                  <Button className="primary">SIGN-IN</Button>
                </Link>
              </li>
            ) : (
              <React.Fragment>
                <li className="nav-item">
                  <Link to="/my-zone">MY ZONE</Link>
                </li>
                <li className="nav-item pl-3">
                  <Link onClick={logout} to="/">
                    <Button className="outline-primary">EXIT</Button>
                  </Link>
                </li>
              </React.Fragment>
            )}
          </ul>
        </nav>
      </Container>
    </>
  );
}

export default Header;
