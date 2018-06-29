component State {
  property type : String = ""
  property data : String = ""

  style base {
    font-family: Source Code Pro;
    flex-direction: column;
    padding-top: 15px;
    font-size: 18px;
    display: flex;
  }

  style type {
    align-items: center;
    color: #2e894e;
    display: flex;
  }

  style equals {
    margin-left: 10px;
    font-weight: 300;
    margin-top: 5px;
    content: "=";
    color: #999;
  }

  style code {
    align-self: flex-start;
    margin-left: 20px;
    margin-top: 20px;
    display: block;
  }

  fun render : Html {
    <div::base>
      <div::type>
        <{ type }>

        <div::equals>
          <{ "=" }>
        </div>
      </div>

      <div::code>
        <Pre code={data}/>
      </div>
    </div>
  }
}