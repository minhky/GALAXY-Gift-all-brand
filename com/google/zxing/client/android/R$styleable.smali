.class public final Lcom/google/zxing/client/android/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final zxing_camera_preview:[I

.field public static final zxing_camera_preview_zxing_framing_rect_height:I = 0x1

.field public static final zxing_camera_preview_zxing_framing_rect_width:I = 0x0

.field public static final zxing_camera_preview_zxing_use_texture_view:I = 0x2

.field public static final zxing_finder:[I

.field public static final zxing_finder_zxing_possible_result_points:I = 0x0

.field public static final zxing_finder_zxing_result_view:I = 0x1

.field public static final zxing_finder_zxing_viewfinder_laser:I = 0x2

.field public static final zxing_finder_zxing_viewfinder_mask:I = 0x3

.field public static final zxing_view:[I

.field public static final zxing_view_zxing_scanner_layout:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/google/zxing/client/android/R$styleable;->zxing_camera_preview:[I

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/zxing/client/android/R$styleable;->zxing_finder:[I

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010356

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/R$styleable;->zxing_view:[I

    return-void

    .line 62
    :array_1c
    .array-data 4
        0x7f01034f
        0x7f010350
        0x7f010351
    .end array-data

    .line 66
    :array_26
    .array-data 4
        0x7f010352
        0x7f010353
        0x7f010354
        0x7f010355
    .end array-data
.end method