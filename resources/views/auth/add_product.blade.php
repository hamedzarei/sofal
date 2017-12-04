<form method="POST" action="">
    <div class="form-group row">
        <label for="inputHorizontalSuccess" class="col-sm-2 col-form-label">نام</label>
        <div class="col-sm-10">
            <input type="text" name="name" class="form-control form-control-success" id="inputHorizontalSuccess">
            {{--<div class="form-control-feedback">Success! You've done it.</div>--}}
            {{--<small class="form-text text-muted">Example help text that remains unchanged.</small>--}}
        </div>
    </div>

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">توضیحات</label>
        <div class="col-sm-10">
            <input type="text" name="description" class="form-control">
        </div>
    </div>

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">کد</label>
        <div class="col-sm-10">
            <input type="text" name="code" class="form-control" placeholder="DKC-123">
        </div>
    </div>

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">اندازه</label>
        <div class="col-sm-10">
            <input type="text" name="size" class="form-control" placeholder="15*48">
        </div>
    </div>

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">قابل شستشو</label>
        <div class="col-sm-10">
            <input type="text" name="washable" class="form-control" placeholder="1">
        </div>
    </div>

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">قیمت</label>
        <div class="col-sm-10">
            <input type="text" name="cost" class="form-control" placeholder="8000">
        </div>
    </div>

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">رنگ</label>
        <div class="col-sm-10">
            <input type="text" name="cost" class="form-control" placeholder="blue, red">
        </div>
    </div>

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">دسته بندی</label>
        <div class="col-sm-10">
            <input type="text" name="category_id" class="form-control" placeholder="1">
        </div>
    </div>

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">جنس</label>
        <div class="col-sm-10">
            <input type="text" name="material" class="form-control" placeholder="سرامیک">
        </div>
    </div>

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">جنس</label>
        <div class="col-sm-10">
            <input type="text" name="material" class="form-control" placeholder="1">
        </div>
    </div>

    <div class="form-group row">
        <label for="inputHorizontalSuccess" class="col-sm-2 col-form-label">عکس</label>
        <div class="col-sm-10">
            <label class="custom-file">
                <input type="file" name="image" id="file" class="custom-file-input" required>
                <span class="custom-file-control">انتخاب عکس...</span>
            </label>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-sm-12 center">
            <input type="submit" class="btn btn-default" value="ارسال">
        </div>
    </div>
</form>