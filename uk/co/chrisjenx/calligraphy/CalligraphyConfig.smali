.class public Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
.super Ljava/lang/Object;
.source "CalligraphyConfig.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;


# instance fields
.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Z

.field private final g:Z

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const v3, 0x101006b

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a:Ljava/util/Map;

    .line 32
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a:Ljava/util/Map;

    const-class v1, Landroid/widget/TextView;

    const v2, 0x1010084

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a:Ljava/util/Map;

    const-class v1, Landroid/widget/Button;

    const v2, 0x1010048

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a:Ljava/util/Map;

    const-class v1, Landroid/widget/EditText;

    const v2, 0x101006e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a:Ljava/util/Map;

    const-class v1, Landroid/widget/AutoCompleteTextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a:Ljava/util/Map;

    const-class v1, Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a:Ljava/util/Map;

    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x101006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a:Ljava/util/Map;

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x101007e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a:Ljava/util/Map;

    const-class v1, Landroid/widget/ToggleButton;

    const v2, 0x101004b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method protected constructor <init>(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)V
    .registers 4

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->a(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->c:Z

    .line 92
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->b(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->d:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->c(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)I

    move-result v0

    iput v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->e:I

    .line 94
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->d(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->f:Z

    .line 95
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->e(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->g:Z

    .line 96
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 97
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->f(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->h:Ljava/util/Map;

    .line 99
    return-void
.end method

.method public static a()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
    .registers 2

    .prologue
    .line 60
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->b:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    if-nez v0, :cond_10

    .line 61
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    new-instance v1, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    invoke-direct {v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;-><init>()V

    invoke-direct {v0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;-><init>(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)V

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->b:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    .line 62
    :cond_10
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->b:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    return-object v0
.end method

.method public static a(Luk/co/chrisjenx/calligraphy/CalligraphyConfig;)V
    .registers 1

    .prologue
    .line 52
    sput-object p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->b:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    .line 53
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method c()Z
    .registers 2

    .prologue
    .line 112
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->c:Z

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->f:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->g:Z

    return v0
.end method

.method f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->h:Ljava/util/Map;

    return-object v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->e:I

    return v0
.end method
